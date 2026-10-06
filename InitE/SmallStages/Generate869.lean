import Tools.GenSmallStages
import InitE.SmallStages.Oracles869
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 869 InitE.WordStages.source869.2.1 InitE.WordStages.source869.2.2 InitE.SmallStages.Oracles869.oracle869
