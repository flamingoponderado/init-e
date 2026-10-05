import Tools.GenSmallStages
import InitE.SmallStages.Oracles473
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 473 InitE.WordStages.source473.2.1 InitE.WordStages.source473.2.2 InitE.SmallStages.Oracles473.oracle473
