import { Router } from "express";
import {
  getSql,
  getOneSql,
  postSql,
  deleteSql,
  updateSql,
} from "../controllers/sql.controller.js";
const router = Router();

router.get("/all");
router.get("/search/:id");
router.post("/add");
router.delete("/all");
router.put("/all");
