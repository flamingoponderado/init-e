import Tools.GenSmallStages
import InitE.SmallStages.Oracles385
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 385 InitE.WordStages.source385.2.1 InitE.WordStages.source385.2.2 InitE.SmallStages.Oracles385.oracle385
