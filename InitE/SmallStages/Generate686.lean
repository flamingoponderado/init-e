import Tools.GenSmallStages
import InitE.SmallStages.Oracles686
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 686 InitE.WordStages.source686.2.1 InitE.WordStages.source686.2.2 InitE.SmallStages.Oracles686.oracle686
