import Tools.GenSmallStages
import InitE.SmallStages.Oracles400
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 400 InitE.WordStages.source400.2.1 InitE.WordStages.source400.2.2 InitE.SmallStages.Oracles400.oracle400
