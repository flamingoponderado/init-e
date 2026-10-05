import Tools.GenSmallStages
import InitE.SmallStages.Oracles464
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 464 InitE.WordStages.source464.2.1 InitE.WordStages.source464.2.2 InitE.SmallStages.Oracles464.oracle464
