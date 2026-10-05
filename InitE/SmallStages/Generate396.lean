import Tools.GenSmallStages
import InitE.SmallStages.Oracles396
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 396 InitE.WordStages.source396.2.1 InitE.WordStages.source396.2.2 InitE.SmallStages.Oracles396.oracle396
