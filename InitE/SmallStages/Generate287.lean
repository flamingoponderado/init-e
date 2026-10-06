import Tools.GenSmallStages
import InitE.SmallStages.Oracles287
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 287 InitE.WordStages.source287.2.1 InitE.WordStages.source287.2.2 InitE.SmallStages.Oracles287.oracle287
