import Tools.GenSmallStages
import InitE.SmallStages.Oracles563
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 563 InitE.WordStages.source563.2.1 InitE.WordStages.source563.2.2 InitE.SmallStages.Oracles563.oracle563
