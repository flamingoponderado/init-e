import Tools.GenSmallStages
import InitE.SmallStages.Oracles742
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 742 InitE.WordStages.source742.2.1 InitE.WordStages.source742.2.2 InitE.SmallStages.Oracles742.oracle742
