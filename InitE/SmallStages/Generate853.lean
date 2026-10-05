import Tools.GenSmallStages
import InitE.SmallStages.Oracles853
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 853 InitE.WordStages.source853.2.1 InitE.WordStages.source853.2.2 InitE.SmallStages.Oracles853.oracle853
