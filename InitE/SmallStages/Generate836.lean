import Tools.GenSmallStages
import InitE.SmallStages.Oracles836
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 836 InitE.WordStages.source836.2.1 InitE.WordStages.source836.2.2 InitE.SmallStages.Oracles836.oracle836
