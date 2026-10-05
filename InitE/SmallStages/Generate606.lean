import Tools.GenSmallStages
import InitE.SmallStages.Oracles606
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 606 InitE.WordStages.source606.2.1 InitE.WordStages.source606.2.2 InitE.SmallStages.Oracles606.oracle606
