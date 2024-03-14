package main

# Checks for missing CPU & Memory Limits
deny[msg] {
	input.kind == "Deployment"
	container := input.spec.template.spec.containers[_]
	missing_resources := {resource |
		resource := "limits.cpu"
		not container.resources.limits.cpu
	} | {resource |
		resource := "limits.memory"
		not container.resources.limits.memory
	}
	count(missing_resources) > 0
	msg = sprintf("Container: `%v` must have %v", [container.name, missing_resources])
}

# Checks for missing CPU & Memory Requests
deny[msg] {
	input.kind == "Deployment"
	container := input.spec.template.spec.containers[_]
	missing_resources := {resource |
		resource := "request.cpu"
		not container.resources.requests.cpu
	} | {resource |
		resource := "requests.memory"
		not container.resources.requests.memory
	}
	count(missing_resources) > 0
	msg = sprintf("Container: `%v` is missing %v", [container.name, missing_resources])
}
