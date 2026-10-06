import Tools.GenSmallStages
import InitE.SmallStages.Oracles586
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 586 InitE.WordStages.source586.2.1 InitE.WordStages.source586.2.2 InitE.SmallStages.Oracles586.oracle586
