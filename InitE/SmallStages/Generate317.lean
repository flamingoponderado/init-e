import Tools.GenSmallStages
import InitE.SmallStages.Oracles317
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 317 InitE.WordStages.source317.2.1 InitE.WordStages.source317.2.2 InitE.SmallStages.Oracles317.oracle317
