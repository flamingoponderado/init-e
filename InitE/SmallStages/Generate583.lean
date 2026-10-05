import Tools.GenSmallStages
import InitE.SmallStages.Oracles583
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 583 InitE.WordStages.source583.2.1 InitE.WordStages.source583.2.2 InitE.SmallStages.Oracles583.oracle583
