import Tools.GenSmallStages
import InitE.SmallStages.Oracles432
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 432 InitE.WordStages.source432.2.1 InitE.WordStages.source432.2.2 InitE.SmallStages.Oracles432.oracle432
