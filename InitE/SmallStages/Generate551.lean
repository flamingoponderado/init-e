import Tools.GenSmallStages
import InitE.SmallStages.Oracles551
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 551 InitE.WordStages.source551.2.1 InitE.WordStages.source551.2.2 InitE.SmallStages.Oracles551.oracle551
