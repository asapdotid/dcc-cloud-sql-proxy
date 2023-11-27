##@ [Utility: Commands]

.PHONY: shell
shell: ## Running shell scriptcontainer with ARGS="ls -al"
	@echo "${LIGHTPURPLE}❭❭${RESET} ${GREEN}EXECUTE COMMAND${RESET} ${YELLOW}[${RESET}${WHITE}▶${RESET} ${RED}$(ARGS)${RESET}${YELLOW}]${RESET}${LIGHTPURPLE}∶${RESET}"
	@$(EXECUTE_IN_APPLICATION_CONTAINER) $(ARGS)
