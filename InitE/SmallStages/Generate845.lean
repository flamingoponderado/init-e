import Tools.GenSmallStages
import InitE.SmallStages.Oracles845
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 845 InitE.WordStages.source845.2.1 InitE.WordStages.source845.2.2 InitE.SmallStages.Oracles845.oracle845
