import Tools.GenSmallStages
import InitE.SmallStages.Oracles685
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 685 InitE.WordStages.source685.2.1 InitE.WordStages.source685.2.2 InitE.SmallStages.Oracles685.oracle685
