import Tools.GenSmallStages
import InitE.SmallStages.Oracles574
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 574 InitE.WordStages.source574.2.1 InitE.WordStages.source574.2.2 InitE.SmallStages.Oracles574.oracle574
