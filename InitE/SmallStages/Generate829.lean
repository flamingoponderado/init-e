import Tools.GenSmallStages
import InitE.SmallStages.Oracles829
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 829 InitE.WordStages.source829.2.1 InitE.WordStages.source829.2.2 InitE.SmallStages.Oracles829.oracle829
