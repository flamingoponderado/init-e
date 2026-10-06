import Tools.GenSmallStages
import InitE.SmallStages.Oracles717
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 717 InitE.WordStages.source717.2.1 InitE.WordStages.source717.2.2 InitE.SmallStages.Oracles717.oracle717
