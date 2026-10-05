import Tools.GenSmallStages
import InitE.SmallStages.Oracles496
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 496 InitE.WordStages.source496.2.1 InitE.WordStages.source496.2.2 InitE.SmallStages.Oracles496.oracle496
