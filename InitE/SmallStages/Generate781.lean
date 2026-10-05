import Tools.GenSmallStages
import InitE.SmallStages.Oracles781
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 781 InitE.WordStages.source781.2.1 InitE.WordStages.source781.2.2 InitE.SmallStages.Oracles781.oracle781
