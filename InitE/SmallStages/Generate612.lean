import Tools.GenSmallStages
import InitE.SmallStages.Oracles612
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 612 InitE.WordStages.source612.2.1 InitE.WordStages.source612.2.2 InitE.SmallStages.Oracles612.oracle612
