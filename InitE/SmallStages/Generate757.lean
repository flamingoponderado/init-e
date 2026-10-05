import Tools.GenSmallStages
import InitE.SmallStages.Oracles757
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 757 InitE.WordStages.source757.2.1 InitE.WordStages.source757.2.2 InitE.SmallStages.Oracles757.oracle757
