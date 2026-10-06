import Tools.GenSmallStages
import InitE.SmallStages.Oracles358
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 358 InitE.WordStages.source358.2.1 InitE.WordStages.source358.2.2 InitE.SmallStages.Oracles358.oracle358
