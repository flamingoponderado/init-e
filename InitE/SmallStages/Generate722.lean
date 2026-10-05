import Tools.GenSmallStages
import InitE.SmallStages.Oracles722
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 722 InitE.WordStages.source722.2.1 InitE.WordStages.source722.2.2 InitE.SmallStages.Oracles722.oracle722
