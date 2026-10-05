import Tools.GenSmallStages
import InitE.SmallStages.Oracles590
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 590 InitE.WordStages.source590.2.1 InitE.WordStages.source590.2.2 InitE.SmallStages.Oracles590.oracle590
