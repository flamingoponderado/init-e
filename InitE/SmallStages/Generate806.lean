import Tools.GenSmallStages
import InitE.SmallStages.Oracles806
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 806 InitE.WordStages.source806.2.1 InitE.WordStages.source806.2.2 InitE.SmallStages.Oracles806.oracle806
