import Tools.GenSmallStages
import InitE.SmallStages.Oracles336
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 336 InitE.WordStages.source336.2.1 InitE.WordStages.source336.2.2 InitE.SmallStages.Oracles336.oracle336
