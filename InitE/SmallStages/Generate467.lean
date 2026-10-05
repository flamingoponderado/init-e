import Tools.GenSmallStages
import InitE.SmallStages.Oracles467
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 467 InitE.WordStages.source467.2.1 InitE.WordStages.source467.2.2 InitE.SmallStages.Oracles467.oracle467
