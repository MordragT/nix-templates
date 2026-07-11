import { describe, it, expect } from "vitest"
import factory from "../index.ts"

describe("extension factory", () => {
  it("导出默认函数", () => {
    expect(typeof factory).toBe("function")
  })
})
