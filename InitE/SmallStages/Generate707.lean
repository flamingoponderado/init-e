import Tools.GenSmallStages
import InitE.SmallStages.Oracles707
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 707 InitE.WordStages.source707.2.1 InitE.WordStages.source707.2.2 InitE.SmallStages.Oracles707.oracle707
