import Tools.GenSmallStages
import InitE.SmallStages.Oracles431
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 431 InitE.WordStages.source431.2.1 InitE.WordStages.source431.2.2 InitE.SmallStages.Oracles431.oracle431
