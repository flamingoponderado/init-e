import Tools.GenSmallStages
import InitE.SmallStages.Oracles774
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 774 InitE.WordStages.source774.2.1 InitE.WordStages.source774.2.2 InitE.SmallStages.Oracles774.oracle774
