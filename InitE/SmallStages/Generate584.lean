import Tools.GenSmallStages
import InitE.SmallStages.Oracles584
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 584 InitE.WordStages.source584.2.1 InitE.WordStages.source584.2.2 InitE.SmallStages.Oracles584.oracle584
