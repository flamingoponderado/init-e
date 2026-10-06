import Tools.GenSmallStages
import InitE.SmallStages.Oracles796
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 796 InitE.WordStages.source796.2.1 InitE.WordStages.source796.2.2 InitE.SmallStages.Oracles796.oracle796
