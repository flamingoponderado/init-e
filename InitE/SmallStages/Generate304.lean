import Tools.GenSmallStages
import InitE.SmallStages.Oracles304
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 304 InitE.WordStages.source304.2.1 InitE.WordStages.source304.2.2 InitE.SmallStages.Oracles304.oracle304
