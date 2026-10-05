import Tools.GenSmallStages
import InitE.SmallStages.Oracles641
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 641 InitE.WordStages.source641.2.1 InitE.WordStages.source641.2.2 InitE.SmallStages.Oracles641.oracle641
