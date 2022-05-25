import { NextApiRequest, NextApiResponse } from "next";

type ResData = {
  result: string | string[];
};

export default function handler(
  req: NextApiRequest,
  res: NextApiResponse<ResData>
) {
  if (req.method === "GET") {
    const { text } = req.query;
    res.status(200).json({ result: text });
  }
}
