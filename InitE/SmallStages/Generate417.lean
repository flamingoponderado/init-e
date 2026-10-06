import Tools.GenSmallStages
import InitE.SmallStages.Oracles417
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 417 InitE.WordStages.source417.2.1 InitE.WordStages.source417.2.2 InitE.SmallStages.Oracles417.oracle417
