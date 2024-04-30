@echo off
REM Activate the Python environment
call E:\Workspaces\PyCharm\LLM_MOM\LLM-Minutes-of-Meeting\env\Scripts\activate.bat

REM Change directory to where your Celery app is located
cd E:\Workspaces\PyCharm\LLM_MOM\LLM-Minutes-of-Meeting

REM Run Celery worker with the app instance
celery -A app.celery worker --loglevel=info -f celery.logs

REM Deactivate the environment on completion
call deactivate
