from fastapi import APIRouter
from app.database.database import list_request_logs

router = APIRouter(prefix="/request-logs", tags=["Request Logs"])


@router.get("")
def get_request_logs(limit: int = 30):
    return list_request_logs(limit)