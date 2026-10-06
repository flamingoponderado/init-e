import Tools.GenSmallStages
import InitE.SmallStages.Oracles326
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 326 InitE.WordStages.source326.2.1 InitE.WordStages.source326.2.2 InitE.SmallStages.Oracles326.oracle326
