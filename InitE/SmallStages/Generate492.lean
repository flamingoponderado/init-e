import Tools.GenSmallStages
import InitE.SmallStages.Oracles492
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 492 InitE.WordStages.source492.2.1 InitE.WordStages.source492.2.2 InitE.SmallStages.Oracles492.oracle492
