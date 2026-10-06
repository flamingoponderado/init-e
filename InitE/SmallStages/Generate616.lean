import Tools.GenSmallStages
import InitE.SmallStages.Oracles616
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 616 InitE.WordStages.source616.2.1 InitE.WordStages.source616.2.2 InitE.SmallStages.Oracles616.oracle616
