import Tools.GenSmallStages
import InitE.SmallStages.Oracles416
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 416 InitE.WordStages.source416.2.1 InitE.WordStages.source416.2.2 InitE.SmallStages.Oracles416.oracle416
