import Tools.GenSmallStages
import InitE.SmallStages.Oracles463
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 463 InitE.WordStages.source463.2.1 InitE.WordStages.source463.2.2 InitE.SmallStages.Oracles463.oracle463
