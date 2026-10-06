import Tools.GenSmallStages
import InitE.SmallStages.Oracles635
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 635 InitE.WordStages.source635.2.1 InitE.WordStages.source635.2.2 InitE.SmallStages.Oracles635.oracle635
