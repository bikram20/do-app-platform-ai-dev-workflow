# Hot Reload Timing Log

## Test Environment
- Branch: claude-hotreloadtesting-1
- Region: syd1
- Test Date: 2025-12-12

---

## nextjs-sample-app

### First Deployment
- T_push_first: 2025-12-12T09:18:30-08:00
- T_ready_first: 2025-12-12T09:24:36-08:00
- first_deploy_duration: 366s (6m 6s)
- App ID: b5641bee-f56e-47c7-8440-ebc9212bb0ec
- URL: https://nextjs-hotreload-test-claude-ej2oy.ondigitalocean.app

### Code-Only Hot Reload
- T_push_code: 2025-12-12T09:25:12-08:00
- T_seen_code: 2025-12-12T09:26:14-08:00
- code_hot_reload_duration: 62s
- Change: Added "HOT RELOAD TEST: Code-only change successful!" message

### Dependency Hot Reload
- T_push_dep: 2025-12-12T09:27:03-08:00
- T_seen_dep: 2025-12-12T09:28:56-08:00
- dep_hot_reload_duration: 113s (1m 53s)
- Change: Added dayjs dependency and displayed formatted current time
- Notes: Hot reload handled dependency install via npm - no full rebuild required

---

## go-sample-app

### First Deployment
- T_push_first:
- T_ready_first:
- first_deploy_duration:

### Code-Only Hot Reload
- T_push_code:
- T_seen_code:
- code_hot_reload_duration:

### Dependency Hot Reload
- T_push_dep:
- T_seen_dep:
- dep_hot_reload_duration:

---

## python-fastapi-sample

### First Deployment
- T_push_first:
- T_ready_first:
- first_deploy_duration:

### Code-Only Hot Reload
- T_push_code:
- T_seen_code:
- code_hot_reload_duration:

### Dependency Hot Reload
- T_push_dep:
- T_seen_dep:
- dep_hot_reload_duration:

---

## nodejs-job-test

### First Deployment
- T_push_first:
- T_ready_first:
- first_deploy_duration:

### Code-Only Hot Reload
- T_push_code:
- T_seen_code:
- code_hot_reload_duration:

### Dependency Hot Reload
- T_push_dep:
- T_seen_dep:
- dep_hot_reload_duration:

---

## ruby-rails-sample

### First Deployment
- T_push_first:
- T_ready_first:
- first_deploy_duration:

### Code-Only Hot Reload
- T_push_code:
- T_seen_code:
- code_hot_reload_duration:

### Dependency Hot Reload
- T_push_dep:
- T_seen_dep:
- dep_hot_reload_duration:

---

## blank-nodejs-template

### First Deployment
- T_push_first:
- T_ready_first:
- first_deploy_duration:

### Code-Only Hot Reload
- T_push_code:
- T_seen_code:
- code_hot_reload_duration:

### Dependency Hot Reload
- T_push_dep:
- T_seen_dep:
- dep_hot_reload_duration:
