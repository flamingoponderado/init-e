import Tools.GenSmallStages
import InitE.SmallStages.Oracles821
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 821 InitE.WordStages.source821.2.1 InitE.WordStages.source821.2.2 InitE.SmallStages.Oracles821.oracle821
