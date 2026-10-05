import Tools.GenSmallStages
import InitE.SmallStages.Oracles861
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 861 InitE.WordStages.source861.2.1 InitE.WordStages.source861.2.2 InitE.SmallStages.Oracles861.oracle861
