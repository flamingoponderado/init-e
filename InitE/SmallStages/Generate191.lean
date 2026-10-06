import Tools.GenSmallStages
import InitE.SmallStages.Oracles191
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 191 InitE.WordStages.source191.2.1 InitE.WordStages.source191.2.2 InitE.SmallStages.Oracles191.oracle191
