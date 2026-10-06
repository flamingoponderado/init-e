import Tools.GenSmallStages
import InitE.SmallStages.Oracles849
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 849 InitE.WordStages.source849.2.1 InitE.WordStages.source849.2.2 InitE.SmallStages.Oracles849.oracle849
