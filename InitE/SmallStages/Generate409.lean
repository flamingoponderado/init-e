import Tools.GenSmallStages
import InitE.SmallStages.Oracles409
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 409 InitE.WordStages.source409.2.1 InitE.WordStages.source409.2.2 InitE.SmallStages.Oracles409.oracle409
